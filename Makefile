# Makefile para o Simulador de Page Fault

CXX = g++
CXXFLAGS = -std=c++17 -Wall -Wextra
LDFLAGS = 

TARGET = simulador_page_fault
SOURCES = simulador_page_fault.cpp
OBJECTS = $(SOURCES:.cpp=.o)

# Alvo padrão
all: $(TARGET)

# Compilar o executável
$(TARGET): $(OBJECTS)
	$(CXX) $(CXXFLAGS) -o $(TARGET) $(OBJECTS) $(LDFLAGS)

# Compilar arquivos de objeto
%.o: %.cpp
	$(CXX) $(CXXFLAGS) -c $< -o $@

# Executar o programa
run: $(TARGET)
	./$(TARGET)

# Limpar arquivos compilados
clean:
	rm -f $(OBJECTS) $(TARGET)

# Recompilação completa
rebuild: clean all

.PHONY: all run clean rebuild
